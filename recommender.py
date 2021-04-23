from miner import *


keywords = whiskey_names

sg.theme("BluePurple")
font = ("Helvetica", 16)

layout = [
    [sg.Text("Input Whiskey:", font=font)],
    [sg.Input("", size=(50, 1), font=font, enable_events=True, key="-IN-")],
    [
        sg.pin(
            sg.Col(
                [
                    [
                        sg.Listbox(
                            values=[],
                            size=(50, 5),
                            enable_events=True,
                            key="-BOX-",
                            font=font,
                            select_mode=sg.LISTBOX_SELECT_MODE_SINGLE,
                            no_scrollbar=True,
                        )
                    ]
                ],
                key="-BOX-CONTAINER-",
                pad=(0, 0),
                visible=False,
            )
        )
    ],
    [sg.Button("Quit"), sg.Button("Submit")],
]

window = sg.Window("AutoComplete", layout, return_keyboard_events=True, finalize=True)
sel_item = 0
list_element = window.Element("-BOX-")
input_text = ""
prediction_list = []
while True:

    event, values = window.read()
    # See if user wants to quit or window was closed
    if event == sg.WINDOW_CLOSED or event == "Quit":
        break
    elif event == "Submit":
        sg.Popup(
            recommend(
                whiskey_names.index(
                    str(values["-BOX-"])
                    .replace("[", "", 1)
                    .replace("]", "", -1)
                    .replace("'", "", 1)
                    .replace("'", "", -1)
                ),
                10,
            )
        )
    # pressing down arrow will trigger event -IN- then aftewards event Down:40
    elif event == "Down:40":
        sel_item = sel_item + (sel_item < len(prediction_list))
        list_element.Update(set_to_index=sel_item)
    elif event == "Up:38":
        sel_item = sel_item - (sel_item > 0)
        list_element.Update(set_to_index=sel_item)
    elif event == "\r":
        if len(values["-BOX-"]) > 0:
            window["-IN-"].update(value=values["-BOX-"])
            window["-BOX-CONTAINER-"].update(visible=False)
    elif event == "-IN-":
        text = values["-IN-"]
        if text == input_text:
            continue
        else:
            input_text = text
        # prediction_list = []
        if text:
            prediction_list = [item for item in keywords if item.startswith(text)]

        list_element.update(values=prediction_list)
        sel_item = 0
        list_element.Update(set_to_index=sel_item)

        if len(prediction_list) > 0:
            window["-BOX-CONTAINER-"].update(visible=True)
        else:
            window["-BOX-CONTAINER-"].update(visible=False)

    elif event == "-BOX-":
        window["-IN-"].update(value=values["-BOX-"])
        visible = False
        window["-BOX-CONTAINER-"].update(visible=False)

window.close()
