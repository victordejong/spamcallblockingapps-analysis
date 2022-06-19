.class public final Le/a/a/o/h$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/o/h;


# direct methods
.method public constructor <init>(Le/a/a/o/h;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/h$h;->a:Le/a/a/o/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    iget-object p1, p0, Le/a/a/o/h$h;->a:Le/a/a/o/h;

    invoke-virtual {p1}, Le/a/a/o/h;->RA()Le/a/a/o/k;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v0, v1, v2}, Le/a/c/p/a;->H1(Le/a/a/o/k;ZZILjava/lang/Object;)V

    return-void
.end method
