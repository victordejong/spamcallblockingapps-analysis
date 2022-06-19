.class public final synthetic Le/a/q4/j;
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

    iput-object p1, p0, Le/a/q4/j;->a:Le/a/q4/o0;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Le/a/q4/j;->a:Le/a/q4/o0;

    check-cast p1, Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Le/a/q4/o0;->Rj(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
