.class public final Le/a/b0/a/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Le/a/b0/a/f$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/b0/a/f$a;

    invoke-direct {v0}, Le/a/b0/a/f$a;-><init>()V

    sput-object v0, Le/a/b0/a/f$a;->a:Le/a/b0/a/f$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object v0, Le/a/b0/a/f;->d:Le/a/b0/a/f$b;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Le/a/b0/a/f;->c:Z

    return-void
.end method
