.class public final Le/a/a/n/j/x;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/a/n/j/w;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/n/j/v;


# direct methods
.method public constructor <init>(Le/a/a/n/j/v;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/x;->b:Le/a/a/n/j/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/a/a/n/j/w;

    invoke-direct {v0, p0}, Le/a/a/n/j/w;-><init>(Le/a/a/n/j/x;)V

    return-object v0
.end method
