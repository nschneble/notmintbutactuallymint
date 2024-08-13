# Helper methods for budget sections
module SectionsHelper
  def badge_color_classes(color)

    # You may be asking yourself, "Why not use string interpolation? This whole method
    # could be a single line of code!"
    #
    # YEAH. I KNOW. I TRIED.
    #
    # color = "red"
    # return "text-#{color}-500 bg-#{color}-100/60"
    #
    # That yeah? It doesn't work. Tailwind doesn't render it. No fucking idea why.
    #
    # I spent too long trying to debug it. This was easier, in the end.

    case color
    when :slate
      "text-slate-500 bg-slate-100/60"
    when :gray
      "text-gray-500 bg-gray-100/60"
    when :zinc
      "text-zinc-500 bg-zinc-100/60"
    when :neutral
      "text-neutral-500 bg-neutral-100/60"
    when :stone
      "text-stone-500 bg-stone-100/60"
    when :red
      "text-red-500 bg-red-100/60"
    when :orange
      "text-orange-500 bg-orange-100/60"
    when :amber
      "text-amber-500 bg-amber-100/60"
    when :yellow
      "text-yellow-500 bg-yellow-100/60"
    when :lime
      "text-lime-500 bg-lime-100/60"
    when :green
      "text-green-500 bg-green-100/60"
    when :emerald
      "text-emerald-500 bg-emerald-100/60"
    when :teal
      "text-teal-500 bg-teal-100/60"
    when :cyan
      "text-cyan-500 bg-cyan-100/60"
    when :sky
      "text-sky-500 bg-sky-100/60"
    when :blue
      "text-blue-500 bg-blue-100/60"
    when :indigo
      "text-indigo-500 bg-indigo-100/60"
    when :violet
      "text-violet-500 bg-violet-100/60"
    when :purple
      "text-purple-500 bg-purple-100/60"
    when :fuchsia
      "text-fuchsia-500 bg-fuchsia-100/60"
    when :pink
      "text-pink-500 bg-pink-100/60"
    when :rose
      "text-rose-500 bg-rose-100/60"
    end
  end
end
