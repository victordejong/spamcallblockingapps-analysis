.class public abstract Le/a/a/c/r8/a;
.super Le/a/a/c/r8/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/a/c/r8/a$e;,
        Le/a/a/c/r8/a$c;,
        Le/a/a/c/r8/a$b;,
        Le/a/a/c/r8/a$d;,
        Le/a/a/c/r8/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/a/c/r8/c;",
        ">",
        "Le/a/a/c/r8/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:I

.field public final e:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/a/a/c/r8/d;-><init>(I)V

    .line 2
    iput p2, p0, Le/a/a/c/r8/a;->d:I

    .line 3
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/r8/a;->e:Landroid/view/LayoutInflater;

    return-void
.end method
