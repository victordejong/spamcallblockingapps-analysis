.class public final Le/a/a/k/z/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/z/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/k/z/c$b;
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
    iput-object p1, p0, Le/a/a/k/z/c;->a:Le/a/r2/w;

    return-void
.end method


# virtual methods
.method public b(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/k/z/c;->a:Le/a/r2/w;

    new-instance v1, Le/a/a/k/z/c$b;

    new-instance v2, Le/a/r2/e;

    invoke-direct {v2}, Le/a/r2/e;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Le/a/a/k/z/c$b;-><init>(Le/a/r2/e;Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/z/c$a;)V

    invoke-interface {v0, v1}, Le/a/r2/w;->a(Le/a/r2/u;)V

    return-void
.end method
