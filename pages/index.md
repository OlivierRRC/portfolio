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

[data-theme="light"] .test{ filter: invert(20%) sepia(14%) saturate(519%) hue-rotate(169deg) brightness(65%) contrast(87%);}
[data-theme="dark"] .test{ filter: invert(100%) sepia(0%) saturate(0%) hue-rotate(94deg) brightness(108%) contrast(106%); }

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
