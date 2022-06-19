.class public final Le/a/k/a/l/a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/l/b;


# direct methods
.method public constructor <init>(Le/a/k/a/l/b;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/l/a;->b:Le/a/k/a/l/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/l/a;->b:Le/a/k/a/l/b;

    iget-object v0, v0, Le/a/k/a/l/b;->b:Lcom/truecaller/videocallerid/ui/view/RecordButton;

    .line 2
    sget v1, Lcom/truecaller/videocallerid/ui/view/RecordButton;->v:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/view/RecordButton;->g1()V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
