.class public final Le/a/d/c/a/a/a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/a/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/p5/i0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c/a/a/a;


# direct methods
.method public constructor <init>(Le/a/d/c/a/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/a/a/a$b;->b:Le/a/d/c/a/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/a/p5/i0;

    iget-object v1, p0, Le/a/d/c/a/a/a$b;->b:Le/a/d/c/a/a/a;

    .line 2
    iget-object v1, v1, Le/a/d/c/a/a/a;->p:Landroid/content/Context;

    .line 3
    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
