.class public Le/a/b0/p/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/p/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:D


# direct methods
.method public constructor <init>(ILjava/lang/String;D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/a/b0/p/b$b;->a:I

    .line 3
    iput-object p2, p0, Le/a/b0/p/b$b;->b:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Le/a/b0/p/b$b;->c:D

    return-void
.end method
