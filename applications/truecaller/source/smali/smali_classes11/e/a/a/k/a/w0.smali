.class public final Le/a/a/k/a/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/x0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/a/w0$b;,
        Le/a/a/k/a/w0$c;
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/w;


# direct methods
.method public constructor <init>(Le/a/r2/w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/k/a/w0;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/api/services/messenger/v1/events/Event;II)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/k/a/w0;->a:Le/a/r2/w;

    new-instance v7, Le/a/a/k/a/w0$c;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v6, 0x0

    move-object v1, v7

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/k/a/w0$c;-><init>(Le/a/r2/e;Lcom/truecaller/api/services/messenger/v1/events/Event;IILe/a/a/k/a/w0$a;)V

    invoke-interface {v0, v7}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method

.method public b()Le/a/r2/x;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/x<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/k/a/w0;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/a/w0$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Le/a/a/k/a/w0$b;-><init>(Le/a/r2/e;Le/a/a/k/a/w0$a;)V

    .line 2
    new-instance v2, Le/a/r2/z;

    invoke-direct {v2, v0, v1}, Le/a/r2/z;-><init>(Le/a/r2/w;Le/a/r2/u;)V

    return-object v2
.end method
