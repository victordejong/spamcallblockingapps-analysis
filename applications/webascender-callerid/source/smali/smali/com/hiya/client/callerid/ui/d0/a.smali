.class public Lcom/hiya/client/callerid/ui/d0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/client/callerid/ui/d0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/ui/d0/a$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "a"


# instance fields
.field private final a:Lcom/google/firebase/perf/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/d0/a;->a:Lcom/google/firebase/perf/c;

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/client/callerid/ui/d0/a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lg/g/a/e/e/n;
    .locals 3

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/d0/a$b;

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/d0/a;->a:Lcom/google/firebase/perf/c;

    invoke-virtual {v1, p1}, Lcom/google/firebase/perf/c;->d(Ljava/lang/String;)Lcom/google/firebase/perf/metrics/Trace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/hiya/client/callerid/ui/d0/a$b;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/metrics/Trace;Lcom/hiya/client/callerid/ui/d0/a$a;)V

    return-object v0
.end method
