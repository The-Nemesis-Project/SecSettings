.class Lcom/android/settings/AirCommandEnabler$2;
.super Ljava/lang/Object;
.source "AirCommandEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AirCommandEnabler;->showAirCommandEnabledPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirCommandEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirCommandEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/settings/AirCommandEnabler$2;->this$0:Lcom/android/settings/AirCommandEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings/AirCommandEnabler$2;->this$0:Lcom/android/settings/AirCommandEnabler;

    #getter for: Lcom/android/settings/AirCommandEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AirCommandEnabler;->access$000(Lcom/android/settings/AirCommandEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    return-void
.end method
