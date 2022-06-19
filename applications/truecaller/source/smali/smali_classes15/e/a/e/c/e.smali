.class public final synthetic Le/a/e/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/e;->a:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/a/e/c/e;->a:Landroid/widget/ListView;

    .line 1
    sget v1, Le/a/e/c/l1;->q:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    return-void
.end method
