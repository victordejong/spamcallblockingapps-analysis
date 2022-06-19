.class public final Le/a/a4/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a4/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a4/g;->m(Ljava/lang/String;Ls1/z/b/a;)Le/a/a4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/z/b/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a4/g$g;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/a/a4/g$g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/g$g;->b:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a4/g$g;->a:Ljava/lang/String;

    return-object v0
.end method
