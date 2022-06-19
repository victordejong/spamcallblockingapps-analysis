.class public final Le/a/a/r0/j$q;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;-><init>()V
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
.field public final synthetic b:Le/a/a/r0/j;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$q;->b:Le/a/a/r0/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/b0/a/c0/b;

    iget-object v1, p0, Le/a/a/r0/j$q;->b:Le/a/a/r0/j;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a/b0/a/c0/b;-><init>(Landroidx/fragment/app/Fragment;Z)V

    return-object v0
.end method
