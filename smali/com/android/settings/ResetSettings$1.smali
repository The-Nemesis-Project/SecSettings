.class Lcom/android/settings/ResetSettings$1;
.super Ljava/lang/Object;
.source "ResetSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 99
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0915a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetSettings$1;->this$0:Lcom/android/settings/ResetSettings;

    invoke-virtual {v1}, Lcom/android/settings/ResetSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0915a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0914c0

    new-instance v2, Lcom/android/settings/ResetSettings$1$2;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetSettings$1$2;-><init>(Lcom/android/settings/ResetSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090173

    new-instance v2, Lcom/android/settings/ResetSettings$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/ResetSettings$1$1;-><init>(Lcom/android/settings/ResetSettings$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 124
    return-void
.end method
