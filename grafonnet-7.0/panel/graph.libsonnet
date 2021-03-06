// This file was generated by https://github.com/grafana/dashboard-spec

{
  new(
    bars=false,
    dashLength=10,
    dashes=false,
    datasource='default',
    decimals=null,
    description=null,
    fill=1,
    fillGradient=0,
    hiddenSeries=false,
    lines=true,
    linewidth=1,
    nullPointMode='null',
    percentage=false,
    pointradius=null,
    points=false,
    repeat=null,
    repeatDirection=null,
    spaceLength=10,
    stack=false,
    steppedLine=false,
    timeFrom=null,
    timeShift=null,
    title=null,
    transparent=false,
  ):: {
    [if bars != null then 'bars']: bars,
    [if dashLength != null then 'dashLength']: dashLength,
    [if dashes != null then 'dashes']: dashes,
    [if datasource != null then 'datasource']: datasource,
    [if decimals != null then 'decimals']: decimals,
    [if description != null then 'description']: description,
    [if fill != null then 'fill']: fill,
    [if fillGradient != null then 'fillGradient']: fillGradient,
    [if hiddenSeries != null then 'hiddenSeries']: hiddenSeries,
    [if lines != null then 'lines']: lines,
    [if linewidth != null then 'linewidth']: linewidth,
    [if nullPointMode != null then 'nullPointMode']: nullPointMode,
    [if percentage != null then 'percentage']: percentage,
    [if pointradius != null then 'pointradius']: pointradius,
    [if points != null then 'points']: points,
    [if repeat != null then 'repeat']: repeat,
    [if repeatDirection != null then 'repeatDirection']: repeatDirection,
    [if spaceLength != null then 'spaceLength']: spaceLength,
    [if stack != null then 'stack']: stack,
    [if steppedLine != null then 'steppedLine']: steppedLine,
    [if timeFrom != null then 'timeFrom']: timeFrom,
    [if timeShift != null then 'timeShift']: timeShift,
    [if title != null then 'title']: title,
    [if transparent != null then 'transparent']: transparent,
    renderer: 'flot',
    type: 'graph',
    tooltip+: { value_type: 'individual' },

    setGridPos(
      h=8,
      w=12,
      x=null,
      y=null,
    ):: self {}
        + { gridPos+: { [if h != null then 'h']: h } }
        + { gridPos+: { [if w != null then 'w']: w } }
        + { gridPos+: { [if x != null then 'x']: x } }
        + { gridPos+: { [if y != null then 'y']: y } }
    ,

    setLegend(
      alignAsTable=null,
      avg=false,
      current=false,
      max=false,
      min=false,
      rightSide=false,
      show=true,
      sideWidth=null,
      total=false,
      values=true,
    ):: self {}
        + { legend+: { [if alignAsTable != null then 'alignAsTable']: alignAsTable } }
        + { legend+: { [if avg != null then 'avg']: avg } }
        + { legend+: { [if current != null then 'current']: current } }
        + { legend+: { [if max != null then 'max']: max } }
        + { legend+: { [if min != null then 'min']: min } }
        + { legend+: { [if rightSide != null then 'rightSide']: rightSide } }
        + { legend+: { [if show != null then 'show']: show } }
        + { legend+: { [if sideWidth != null then 'sideWidth']: sideWidth } }
        + { legend+: { [if total != null then 'total']: total } }
        + { legend+: { [if values != null then 'values']: values } }
    ,

    setThresholds(
      thresholdMode='absolute',
    ):: self {}
        + { thresholds+: { [if thresholdMode != null then 'mode']: thresholdMode } }
    ,

    setTooltip(
      shared=true,
      sort=2,
    ):: self {}
        + { tooltip+: { [if shared != null then 'shared']: shared } }
        + { tooltip+: { [if sort != null then 'sort']: sort } }
    ,

    setXaxis(
      buckets=null,
      mode='time',
      name=null,
      show=true,
    ):: self {}
        + { xaxis+: { [if buckets != null then 'buckets']: buckets } }
        + { xaxis+: { [if mode != null then 'mode']: mode } }
        + { xaxis+: { [if name != null then 'name']: name } }
        + { xaxis+: { [if show != null then 'show']: show } }
    ,

    setYaxis(
      align=false,
      alignLevel=0,
    ):: self {}
        + { yaxis+: { [if align != null then 'align']: align } }
        + { yaxis+: { [if alignLevel != null then 'alignLevel']: alignLevel } }
    ,


    addDataLink(
      targetBlank=true,
      title=null,
      url=null,
    ):: self {}
        + { options+: { dataLinks+: [
          {
            [if targetBlank != null then 'targetBlank']: targetBlank,
            [if title != null then 'title']: title,
            [if url != null then 'url']: url,
          },
        ] } },

    addPanelLink(
      targetBlank=true,
      title=null,
      url=null,
    ):: self {}
        + { links+: [
          {
            [if targetBlank != null then 'targetBlank']: targetBlank,
            [if title != null then 'title']: title,
            [if url != null then 'url']: url,
          },
        ] },

    addOverride(
      matcher=null,
      properties=null,
    ):: self {}
        + { fieldConfig+: { overrides+: [
          {
            [if matcher != null then 'matcher']: matcher,
            [if properties != null then 'properties']: properties,
          },
        ] } },

    addSeriesOverride(
      alias=null,
      bars=null,
      color=null,
      dashLength=null,
      dashes=null,
      fill=null,
      fillBelowTo=null,
      fillGradient=null,
      hiddenSeries=null,
      hideTooltip=null,
      legend=null,
      lines=null,
      linewidth=null,
      nullPointMode=null,
      pointradius=null,
      points=null,
      spaceLength=null,
      stack=null,
      steppedLine=null,
      transform=null,
      yaxis=null,
      zindex=null,
    ):: self {}
        + { seriesOverrides+: [
          {
            [if alias != null then 'alias']: alias,
            [if bars != null then 'bars']: bars,
            [if color != null then 'color']: color,
            [if dashLength != null then 'dashLength']: dashLength,
            [if dashes != null then 'dashes']: dashes,
            [if fill != null then 'fill']: fill,
            [if fillBelowTo != null then 'fillBelowTo']: fillBelowTo,
            [if fillGradient != null then 'fillGradient']: fillGradient,
            [if hiddenSeries != null then 'hiddenSeries']: hiddenSeries,
            [if hideTooltip != null then 'hideTooltip']: hideTooltip,
            [if legend != null then 'legend']: legend,
            [if lines != null then 'lines']: lines,
            [if linewidth != null then 'linewidth']: linewidth,
            [if nullPointMode != null then 'nullPointMode']: nullPointMode,
            [if pointradius != null then 'pointradius']: pointradius,
            [if points != null then 'points']: points,
            [if spaceLength != null then 'spaceLength']: spaceLength,
            [if stack != null then 'stack']: stack,
            [if steppedLine != null then 'steppedLine']: steppedLine,
            [if transform != null then 'transform']: transform,
            [if yaxis != null then 'yaxis']: yaxis,
            [if zindex != null then 'zindex']: zindex,
          },
        ] },

    addThresholdStep(
      color=null,
      value=null,
    ):: self {}
        + { thresholds+: { steps+: [
          {
            [if color != null then 'color']: color,
            [if value != null then 'value']: value,
          },
        ] } },

    addTarget(
      target
    ):: self {}
        + { targets+: [
          target,
        ] },

    addYaxis(
      decimals=null,
      format='short',
      label=null,
      logBase=1,
      max=null,
      min=null,
      show=true,
    ):: self {}
        + { yaxes+: [
          {
            [if decimals != null then 'decimals']: decimals,
            [if format != null then 'format']: format,
            [if label != null then 'label']: label,
            [if logBase != null then 'logBase']: logBase,
            [if max != null then 'max']: max,
            [if min != null then 'min']: min,
            [if show != null then 'show']: show,
          },
        ] },

  },
}
