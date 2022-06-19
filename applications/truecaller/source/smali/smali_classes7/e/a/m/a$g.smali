.class public final Le/a/m/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/m/a;


# direct methods
.method public constructor <init>(Le/a/m/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/m/a$g;->a:Le/a/m/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m/a$g;->a:Le/a/m/a;

    invoke-virtual {v0}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object v0

    check-cast v0, Le/a/m/v;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/m/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/m/s;->L7()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/m/a$g;->a:Le/a/m/a;

    invoke-virtual {v0}, Le/a/m/a;->ZA()Le/a/m/q;

    move-result-object v0

    check-cast v0, Le/a/m/v;

    .line 2
    iget-object v0, v0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 3
    check-cast v0, Le/a/m/r;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/m/r;->C3()V

    :cond_0
    return-void
.end method
