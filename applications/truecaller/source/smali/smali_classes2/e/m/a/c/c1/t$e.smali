.class public final Le/m/a/c/c1/t$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/c1/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Le/m/a/c/o0;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Le/m/a/c/o0;JJLe/m/a/c/c1/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/c1/t$e;->a:Le/m/a/c/o0;

    .line 3
    iput-wide p2, p0, Le/m/a/c/c1/t$e;->b:J

    .line 4
    iput-wide p4, p0, Le/m/a/c/c1/t$e;->c:J

    return-void
.end method
