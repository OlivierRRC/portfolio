---
layout: default
permalink: /
---

{% include landing.html %}

<style>
.row.skills{
    display: flex;
}

.column.skills {
    position: relative;
    top: 50%;

     flex: 20%;
     padding: 5px;
}

.skills {
    height:50%;
}

.test{
    max-width: 50%;
    margin:auto;
    display:flex;
}

[data-theme="light"] .test{ filter: brightness(0) saturate(100%) invert(7%) sepia(13%) saturate(358%) hue-rotate(155deg) brightness(92%) contrast(92%);}
[data-theme="dark"] .test{ filter: brightness(0) saturate(100%) invert(84%) sepia(100%) saturate(2%) hue-rotate(262deg) brightness(106%) contrast(101%); }

</style>

<div class="skills">
<div class="row skills">
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-01.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-02.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-03.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-04.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
    <div class="column skills">
        <img src="assets/Icons/SkillIcons-05.svg" alt="UnrealEngine" width="100%" class="test">
    </div>
</div>
</div>
