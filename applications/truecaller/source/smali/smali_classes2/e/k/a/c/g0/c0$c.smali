.class public Le/k/a/c/g0/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/c0$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/k/a/c/g0/c0;->D()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/k/a/c/g0/c0$g<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/k/a/c/g0/c0;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/g0/c0$c;->a:Le/k/a/c/g0/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g0/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/c0$c;->a:Le/k/a/c/g0/c0;

    iget-object v0, v0, Le/k/a/c/g0/c0;->d:Le/k/a/c/b;

    invoke-virtual {v0, p1}, Le/k/a/c/b;->p0(Le/k/a/c/g0/i;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
