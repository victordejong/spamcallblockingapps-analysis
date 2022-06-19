.class public Le/i/b/s2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/s2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final c:Le/i/b/s2/b$b;

.field public static final d:Le/i/b/s2/b$b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Le/i/b/s2/b$b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/i/b/s2/b$b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Le/i/b/s2/b$b;->c:Le/i/b/s2/b$b;

    .line 2
    new-instance v0, Le/i/b/s2/b$b;

    const-string v1, "00000000-0000-0000-0000-000000000000"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Le/i/b/s2/b$b;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Le/i/b/s2/b$b;->d:Le/i/b/s2/b$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/s2/b$b;->a:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Le/i/b/s2/b$b;->b:Z

    return-void
.end method
