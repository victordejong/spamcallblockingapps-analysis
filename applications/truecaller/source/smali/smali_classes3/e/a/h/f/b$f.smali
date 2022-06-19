.class public final Le/a/h/f/b$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/b;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/a/c0/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/f/b;


# direct methods
.method public constructor <init>(Le/a/h/f/b;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/b$f;->b:Le/a/h/f/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/b0/a/c0/b;

    iget-object v1, p0, Le/a/h/f/b$f;->b:Le/a/h/f/b;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Le/a/b0/a/c0/b;-><init>(Landroidx/fragment/app/Fragment;ZI)V

    return-object v0
.end method
