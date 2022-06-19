.class public Le/f/a/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/o/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:Le/f/a/o/n;

.field public final synthetic b:Le/f/a/i;


# direct methods
.method public constructor <init>(Le/f/a/i;Le/f/a/o/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/a/i$c;->b:Le/f/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/f/a/i$c;->a:Le/f/a/o/n;

    return-void
.end method
