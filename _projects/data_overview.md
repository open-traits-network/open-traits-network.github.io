---
layout: page
title: Data Overview
id: data_overview
description: A high level overview of the traits and taxa in the OTN registry
---

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"></script>
<script type="text/javascript">
$(document).ready( function () {
	$('div.table2-start').nextUntil('div.table2-end', 'table').DataTable();
} );
</script>
<script type="text/javascript" src="../js/leaflet.js"></script>

[Trait Overview](#trait-overview) - [Trait Overview by Dataset](#trait-overview-by-dataset) - [Taxonomic Overview](#taxonomic-overview) - [Taxonomic Trait Overview](#taxonomic-trait-overview)

> Warning this is just a sketch of the tables, data is not accurate

## Summary

Currently, this overview contains XX records of XX traits from XX species in XX datasets.
Note, that the same record might occur in multiple datasets.

Summary from 2022-XX-YY

## Trait Overview

|Trait|Number of taxa|Dataset|
|---|---|---|
|Growth Habit | 4500 | [TRY](datasets/try), [AmphiBIO](datasets/amphi-bio), [AmP](datasets/amp) |
|Body Mass | 137 | [TRY](datasets/try), [AmphiBIO](datasets/amphi-bio) |
|... | ... | ... | 

<button>Download as csv</button>

## Trait Overview by Dataset

<div class="table2-start"></div>

|Trait Bucket|Traits|Number of taxa|Number of records|Dataset|
|---|---|---|---|---|
|[Size](#) |Height \| Dry Mass \| Crown Radius| 3007 | 10254 | [TRY](datasets/try) |
|[Morphology](#) |Growth Habit | 223 | 254 | [AmphiBIO](datasets/amphi-bio) |
|[Morphology](#) |Growth Habit | 21 | 1024 | [AmP](datasets/amp) |
|... || 0 | 0 | ... |
|[Size](#) |Body Mass | 123 | 254 | [TRY](datasets/try) |
|[Size](#) |Body Mass | 302 | 12254 | [AmphiBIO](datasets/amphi-bio) |
|... || 0 | 0 | ... |

<div class="table2-end"></div>

<button>Download as csv</button>

## Taxonomic Overview

|Kingdom|Number of traits|Number of records|Dataset|
|---|---|---|---|
|Plantae | 2091 | 500723 | [TRY](datasets/try) |
|... | ... | ... | ... |
|Animalia | 53 | 30123 | [AmphiBIO](datasets/amphi-bio) |
|Animalia | 5 | 10231 | [AmP](datasets/amp) |
|... | ... | ... | ... |

<button>Download as csv</button>

## Taxonomic Trait Overview

|Kingdom|Trait Bucket|Number of records|Traits|Dataset|
|---|---|---|---|---|
|Plantae | Morphology | Growth Habit \| Leaf size \| Wood density |76342| [TRY](datasets/try) |
|... | ... | ... | ... | ... |
|Animalia | Size | Body length \| Dry mass | 2312 | [AmphiBIO](datasets/amphi-bio) |
|Animalia | Size | Body length | 843 | [AmP](datasets/amp) |
|... | ... | ... | ... | ... |

<button>Download as csv</button>