.class public final Le/a/a/c/t4$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/t4;->N8([Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/t4;

.field public final synthetic b:[Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public constructor <init>(Le/a/a/c/t4;[Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/t4$k;->a:Le/a/a/c/t4;

    iput-object p2, p0, Le/a/a/c/t4$k;->b:[Lcom/truecaller/messaging/data/types/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/a/c/t4$k;->a:Le/a/a/c/t4;

    iget-object v0, p0, Le/a/a/c/t4$k;->b:[Lcom/truecaller/messaging/data/types/Message;

    .line 3
    iget-object v1, p1, Le/a/a/c/t4;->t0:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p1, Le/a/a/c/t4;->t0:Le/a/c/b/j;

    invoke-interface {v1}, Le/a/c/b/j;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p1, Le/a/a/c/t4;->Z:Le/a/p5/h0;

    const v3, 0x7f100003

    array-length v4, v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v2}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v1, p1, Le/a/a/c/t4;->Z:Le/a/p5/h0;

    const v3, 0x7f1201fb

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "if (insightsStatusProvid\u2026 messages.size)\n        }"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/z4;

    if-eqz p1, :cond_2

    invoke-interface {p1, v0, v1}, Le/a/a/c/z4;->Uf([Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
