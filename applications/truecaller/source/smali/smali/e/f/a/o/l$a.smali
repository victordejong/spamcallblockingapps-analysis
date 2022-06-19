.class public Le/f/a/o/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/o/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/a/o/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/a/c;Le/f/a/o/h;Le/f/a/o/m;Landroid/content/Context;)Le/f/a/i;
    .locals 8

    .line 1
    new-instance v7, Le/f/a/i;

    .line 2
    new-instance v4, Le/f/a/o/n;

    invoke-direct {v4}, Le/f/a/o/n;-><init>()V

    .line 3
    iget-object v5, p1, Le/f/a/c;->h:Le/f/a/o/d;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v0 .. v6}, Le/f/a/i;-><init>(Le/f/a/c;Le/f/a/o/h;Le/f/a/o/m;Le/f/a/o/n;Le/f/a/o/d;Landroid/content/Context;)V

    return-object v7
.end method
