.class public Le/a/k0/n/b/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/k0/n/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/k0/n/b/h;


# direct methods
.method public constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubblesService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Le/a/k0/n/b/h;->e:Le/a/k0/n/b/h;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Le/a/k0/n/b/h;

    invoke-direct {v0}, Le/a/k0/n/b/h;-><init>()V

    sput-object v0, Le/a/k0/n/b/h;->e:Le/a/k0/n/b/h;

    .line 4
    :cond_0
    sget-object v0, Le/a/k0/n/b/h;->e:Le/a/k0/n/b/h;

    .line 5
    iput-object v0, p0, Le/a/k0/n/b/h$a;->a:Le/a/k0/n/b/h;

    .line 6
    iput-object p1, v0, Le/a/k0/n/b/h;->c:Lcom/truecaller/callrecording/ui/bubble/BubblesService;

    return-void
.end method
