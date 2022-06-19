.class public final synthetic Le/a/q4/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o5/p;


# instance fields
.field public final synthetic a:Le/a/q4/o0;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/k;->a:Le/a/q4/o0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le/a/q4/k;->a:Le/a/q4/o0;

    check-cast p1, Landroid/net/Uri;

    .line 1
    invoke-virtual {v0, p1}, Le/a/q4/o0;->Jj(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Le/a/q4/o0;->Rj(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Le/a/q4/o0;->Pj(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
