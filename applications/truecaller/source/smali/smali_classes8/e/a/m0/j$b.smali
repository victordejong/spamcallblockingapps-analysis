.class public Le/a/m0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(JILjava/lang/String;ZLe/a/m0/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Le/a/m0/j$b;->a:J

    .line 3
    iput p3, p0, Le/a/m0/j$b;->b:I

    .line 4
    iput-object p4, p0, Le/a/m0/j$b;->c:Ljava/lang/String;

    .line 5
    iput-boolean p5, p0, Le/a/m0/j$b;->d:Z

    return-void
.end method
