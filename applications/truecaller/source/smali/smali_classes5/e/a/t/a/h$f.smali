.class public final Le/a/t/a/h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/a/a/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/t/a/h;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/h;


# direct methods
.method public constructor <init>(Le/a/t/a/h;)V
    .locals 0

    iput-object p1, p0, Le/a/t/a/h$f;->a:Le/a/t/a/h;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h$f;->a:Le/a/t/a/h;

    .line 2
    iget-object v0, v0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    .line 3
    invoke-interface {v0}, Le/a/t/a/a/g;->yb()V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h$f;->a:Le/a/t/a/h;

    .line 2
    iget-object v0, v0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 3
    :goto_0
    invoke-interface {v0, p1, p2}, Le/a/t/a/a/g;->ji(Ljava/lang/String;Z)V

    return-void
.end method

.method public u1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/t/a/h$f;->a:Le/a/t/a/h;

    .line 2
    iget-object v0, v0, Le/a/t/a/h;->p:Le/a/t/a/a/g;

    .line 3
    invoke-interface {v0}, Le/a/t/a/a/g;->u1()V

    return-void
.end method
