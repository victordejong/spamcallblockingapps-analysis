.class public final Le/a/a/c/k3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/k3;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
.field public final synthetic a:Le/a/a/c/k3;


# direct methods
.method public constructor <init>(Le/a/a/c/k3;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/k3$a;->a:Le/a/a/c/k3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/a/c/k3$a;->a:Le/a/a/c/k3;

    iget-object p1, p1, Le/a/a/c/k3;->f:Le/a/a/c/i3;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/m3;

    if-eqz p1, :cond_0

    const v0, 0x7f1201db

    .line 4
    invoke-interface {p1, v0}, Le/a/a/c/m3;->a(I)V

    :cond_0
    return-void
.end method
