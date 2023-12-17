from vetiver import VetiverModel
import vetiver
import pins


b = pins.board_folder('data/model', allow_pickle_read=True)
v = VetiverModel.from_pin(b, 'penguin_model', version = '20231211T084841Z-73a81')

vetiver_api = vetiver.VetiverAPI(v)
api = vetiver_api.app
