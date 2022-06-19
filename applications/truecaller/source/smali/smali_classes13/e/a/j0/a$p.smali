.class public final Le/a/j0/a$p;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j0/a;-><init>(Landroid/content/Context;Ls1/w/f;Le/a/a/g/x;Le/a/a/i0;Le/a/c/a/i/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/j0/k;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j0/a;


# direct methods
.method public constructor <init>(Le/a/j0/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j0/a$p;->b:Le/a/j0/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    new-instance v8, Le/a/j0/k;

    iget-object v0, p0, Le/a/j0/a$p;->b:Le/a/j0/a;

    invoke-static {v0}, Le/a/j0/a;->o(Le/a/j0/a;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Le/a/j0/a$p;->b:Le/a/j0/a;

    invoke-static {v0}, Le/a/j0/a;->r(Le/a/j0/a;)J

    move-result-wide v2

    iget-object v0, p0, Le/a/j0/a$p;->b:Le/a/j0/a;

    invoke-static {v0}, Le/a/j0/a;->p(Le/a/j0/a;)J

    move-result-wide v4

    iget-object v0, p0, Le/a/j0/a$p;->b:Le/a/j0/a;

    .line 2
    iget-object v6, v0, Le/a/j0/a;->h:Le/a/a/g/x;

    .line 3
    iget-object v7, v0, Le/a/j0/a;->i:Le/a/a/i0;

    move-object v0, v8

    .line 4
    invoke-direct/range {v0 .. v7}, Le/a/j0/k;-><init>(Landroid/content/ContentResolver;JJLe/a/a/g/x;Le/a/a/i0;)V

    return-object v8
.end method
