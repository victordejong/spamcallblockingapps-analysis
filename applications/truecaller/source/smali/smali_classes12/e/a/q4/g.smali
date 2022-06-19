.class public final synthetic Le/a/q4/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/q4/x;


# direct methods
.method public synthetic constructor <init>(Le/a/q4/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/g;->a:Le/a/q4/x;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le/a/q4/g;->a:Le/a/q4/x;

    check-cast p1, Ljava/util/List;

    .line 1
    invoke-virtual {v0, p1}, Le/a/q4/x;->Hj(Ljava/util/List;)V

    return-void
.end method
