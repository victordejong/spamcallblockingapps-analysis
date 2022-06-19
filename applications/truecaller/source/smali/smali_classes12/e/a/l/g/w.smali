.class public Le/a/l/g/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/l/g/x;


# direct methods
.method public constructor <init>(Le/a/l/g/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/l/g/w;->a:Le/a/l/g/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/l/g/w;->a:Le/a/l/g/x;

    .line 2
    iget-boolean v0, p1, Le/a/l/g/x;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/l/g/x;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/l/g/x;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/g/e;

    check-cast p1, Lcom/truecaller/premium/gift/GoldGiftDialogActivity;

    invoke-interface {v0, p1}, Le/a/l/g/e;->V(Lcom/truecaller/premium/gift/GoldGiftDialogActivity;)V

    :cond_0
    return-void
.end method
