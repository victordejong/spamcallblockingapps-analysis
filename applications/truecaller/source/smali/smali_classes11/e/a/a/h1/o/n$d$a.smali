.class public final Le/a/a/h1/o/n$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h1/o/n$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h1/o/n$d;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/n$d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/n$d$a;->a:Le/a/a/h1/o/n$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/n$d$a;->a:Le/a/a/h1/o/n$d;

    iget-object v0, v0, Le/a/a/h1/o/n$d;->a:Le/a/a/h1/o/n;

    .line 2
    iget v1, v0, Le/a/a/h1/o/n;->g:F

    .line 3
    iget v2, v0, Le/a/a/h1/o/n;->h:F

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 4
    invoke-static {v0, v1, v2, v3, v4}, Le/a/a/h1/o/n;->n(Le/a/a/h1/o/n;FFZI)V

    return-void
.end method
