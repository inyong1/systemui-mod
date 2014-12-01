.class public Lcom/android/systemui/batteryview/BatteryPreference;
.super Landroid/preference/PreferenceFragment;
.source "BatteryPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private contResolver:Landroid/content/ContentResolver;

.field private intent:Landroid/content/Intent;

.field private prefCheckboxBatteryAktif:Landroid/preference/Preference;

.field private prefListBatteryYangAktif:Landroid/preference/Preference;

.field private prefPersenIkonStandar:Landroid/preference/Preference;

.field prefScreen:Landroid/preference/PreferenceScreen;

.field private prefStyleIkonBulat:Landroid/preference/Preference;

.field private prefWarnaIkon:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 103
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/preference/PreferenceFragment;-><init>()V

    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "inyong.batteryview"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lcom/android/systemui/batteryview/BatteryPreference;->intent:Landroid/content/Intent;

    return-void
.end method

.method private hideDannUnhidePref(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    move v1, p1

    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/BatteryPreference;->prefScreen:Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefPersenIkonStandar:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 95
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/BatteryPreference;->prefScreen:Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefStyleIkonBulat:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/BatteryPreference;->prefScreen:Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefStyleIkonBulat:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    move-result v3

    .line 100
    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/BatteryPreference;->prefScreen:Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefPersenIkonStandar:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    move-object v4, v0

    const/high16 v5, 0x7f040000

    invoke-virtual {v4, v5}, Lcom/android/systemui/batteryview/BatteryPreference;->addPreferencesFromResource(I)V

    .line 30
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/BatteryPreference;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    .line 32
    move-object v4, v0

    move-object v5, v0

    const-string v6, "preferensi"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefScreen:Landroid/preference/PreferenceScreen;

    .line 34
    move-object v4, v0

    move-object v5, v0

    const-string v6, "battery_aktif"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefCheckboxBatteryAktif:Landroid/preference/Preference;

    .line 35
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefCheckboxBatteryAktif:Landroid/preference/Preference;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 37
    move-object v4, v0

    move-object v5, v0

    const-string v6, "battery_yang_aktif"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefListBatteryYangAktif:Landroid/preference/Preference;

    .line 38
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefListBatteryYangAktif:Landroid/preference/Preference;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 40
    move-object v4, v0

    move-object v5, v0

    const-string v6, "battery_bulat_style"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefStyleIkonBulat:Landroid/preference/Preference;

    .line 41
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefStyleIkonBulat:Landroid/preference/Preference;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    move-object v4, v0

    move-object v5, v0

    const-string v6, "battery_standart_persen"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefPersenIkonStandar:Landroid/preference/Preference;

    .line 44
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefPersenIkonStandar:Landroid/preference/Preference;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    move-object v4, v0

    move-object v5, v0

    const-string v6, "battery_warna"

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefWarnaIkon:Landroid/preference/Preference;

    .line 47
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->prefWarnaIkon:Landroid/preference/Preference;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 49
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v5, "battery_yang_aktif"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    .line 50
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lcom/android/systemui/batteryview/BatteryPreference;->hideDannUnhidePref(I)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->prefCheckboxBatteryAktif:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    .line 60
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v6, "battery_aktif"

    move v7, v3

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    .line 86
    :cond_0
    :goto_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/BatteryPreference;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    const/4 v5, 0x1

    move v0, v5

    return v0

    .line 60
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 62
    :cond_2
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->prefListBatteryYangAktif:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 64
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 65
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v6, "battery_yang_aktif"

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    .line 66
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Lcom/android/systemui/batteryview/BatteryPreference;->hideDannUnhidePref(I)V

    goto :goto_1

    .line 68
    :cond_3
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->prefStyleIkonBulat:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 71
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v6, "battery_bulat_style"

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    goto :goto_1

    .line 73
    :cond_4
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->prefPersenIkonStandar:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 75
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    .line 76
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v6, "battery_standart_persen"

    move v7, v3

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    .line 78
    :cond_6
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/BatteryPreference;->prefWarnaIkon:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, v5

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/BatteryPreference;->contResolver:Landroid/content/ContentResolver;

    const-string v6, "battery_warna"

    move v7, v3

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    goto/16 :goto_1
.end method
