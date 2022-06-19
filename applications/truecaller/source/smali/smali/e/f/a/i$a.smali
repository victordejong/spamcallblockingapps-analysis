.class public Le/f/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/f/a/i;


# direct methods
.method public constructor <init>(Le/f/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/i$a;->a:Le/f/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/i$a;->a:Le/f/a/i;

    iget-object v1, v0, Le/f/a/i;->c:Le/f/a/o/h;

    invoke-interface {v1, v0}, Le/f/a/o/h;->b(Le/f/a/o/i;)V

    return-void
.end method
