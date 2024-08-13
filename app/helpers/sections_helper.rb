# Helper methods for budget sections
module SectionsHelper
  BADGE_COLORS = {
    slate: "text-slate-500 bg-slate-100/60",
    gray: "text-gray-500 bg-gray-100/60",
    zinc: "text-zinc-500 bg-zinc-100/60",
    neutral: "text-neutral-500 bg-neutral-100/60",
    stone: "text-stone-500 bg-stone-100/60",
    red: "text-red-500 bg-red-100/60",
    orange: "text-orange-500 bg-orange-100/60",
    amber: "text-amber-500 bg-amber-100/60",
    yellow: "text-yellow-500 bg-yellow-100/60",
    lime: "text-lime-500 bg-lime-100/60",
    green: "text-green-500 bg-green-100/60",
    emerald: "text-emerald-500 bg-emerald-100/60",
    teal: "text-teal-500 bg-teal-100/60",
    cyan: "text-cyan-500 bg-cyan-100/60",
    sky: "text-sky-500 bg-sky-100/60",
    blue: "text-blue-500 bg-blue-100/60",
    indigo: "text-indigo-500 bg-indigo-100/60",
    violet: "text-violet-500 bg-violet-100/60",
    purple: "text-purple-500 bg-purple-100/60",
    fuchsia: "text-fuchsia-500 bg-fuchsia-100/60",
    pink: "text-pink-500 bg-pink-100/60",
    rose: "text-rose-500 bg-rose-100/60"
  }.freeze

  def badge_color_classes(color)
    return BADGE_COLORS[:neutral] unless BADGE_COLORS.key? color

    # You may be asking yourself, "What's with the massive hash? Why not use string
    # interpolation? This could've been a single line of code!" YEAH I KNOW. It didn't work.
    # Tailwind wouldn't render the colors. I spent too long trying to debug it.

    BADGE_COLORS[color]
  end
end
