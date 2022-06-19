.class public final Le/m/a/b/i/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/b/i/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Le/m/a/b/i/e/o;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URL;Le/m/a/b/i/e/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/b/i/d$a;->a:Ljava/net/URL;

    .line 3
    iput-object p2, p0, Le/m/a/b/i/d$a;->b:Le/m/a/b/i/e/o;

    .line 4
    iput-object p3, p0, Le/m/a/b/i/d$a;->c:Ljava/lang/String;

    return-void
.end method
