.class public final Le/a/f0/h/c/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f0/h/c/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/f0/h/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/f0/h/c/d;


# direct methods
.method public constructor <init>(Le/a/f0/h/c/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f0/h/c/d$b;->b:Le/a/f0/h/c/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/f0/h/c/a;

    new-instance v1, Le/a/f0/h/c/e;

    iget-object v2, p0, Le/a/f0/h/c/d$b;->b:Le/a/f0/h/c/d;

    invoke-direct {v1, v2}, Le/a/f0/h/c/e;-><init>(Le/a/f0/h/c/d;)V

    invoke-direct {v0, v1}, Le/a/f0/h/c/a;-><init>(Ls1/z/b/l;)V

    return-object v0
.end method
