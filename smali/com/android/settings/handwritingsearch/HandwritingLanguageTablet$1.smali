.class Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$1;
.super Ljava/lang/Object;
.source "HandwritingLanguageTablet.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;


# direct methods
.method constructor <init>(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet$1;->this$0:Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;

    # getter for: Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;->access$000(Lcom/android/settings/handwritingsearch/HandwritingLanguageTablet;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
