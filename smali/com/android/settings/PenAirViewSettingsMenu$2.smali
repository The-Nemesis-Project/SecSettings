.class Lcom/android/settings/PenAirViewSettingsMenu$2;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenAirViewSettingsMenu;->showAirViewDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/PenAirViewSettingsMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/settings/PenAirViewSettingsMenu$2;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/PenAirViewSettingsMenu$2;->this$0:Lcom/android/settings/PenAirViewSettingsMenu;

    invoke-virtual {v0}, Lcom/android/settings/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_information_preview"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 248
    return-void
.end method
