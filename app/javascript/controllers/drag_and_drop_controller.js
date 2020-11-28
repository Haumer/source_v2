import { Controller } from "stimulus"
import Sortable from 'sortablejs'

export default class extends Controller {
  static targets = [ "output" ]

  connect() {
    this.sortable = Sortable.create(this.element, {
      onEnd: this.end
    })
  }

  end() {
    let data = new FormData()
    let id = event.item.dataset.id
    data.append(position: event.newIndex + 1)
    Rails.ajax({
      url: this.data.get("url").replace(":id", id),
      type: 'PATCH',
      data: data
    })
    console.log(event)
  }
}
