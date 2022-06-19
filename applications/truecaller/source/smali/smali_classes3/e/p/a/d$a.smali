.class public Le/p/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/p/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Z

.field public final synthetic c:Le/p/a/d;


# direct methods
.method public constructor <init>(Le/p/a/d;ILe/p/a/s;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/d$a;->c:Le/p/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/p/a/d$a;->a:I

    .line 3
    iput-boolean p4, p0, Le/p/a/d$a;->b:Z

    return-void
.end method
