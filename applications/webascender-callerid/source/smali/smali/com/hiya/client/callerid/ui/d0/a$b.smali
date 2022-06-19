.class public Lcom/hiya/client/callerid/ui/d0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lg/g/a/e/e/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/client/callerid/ui/d0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hiya/client/callerid/ui/d0/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Lcom/google/firebase/perf/metrics/Trace;

.field private g:Ljava/lang/String;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/client/callerid/ui/b0/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/d0/a$b$a;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/d0/a$b$a;-><init>()V

    sput-object v0, Lcom/hiya/client/callerid/ui/d0/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    .line 8
    const-class v0, Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/metrics/Trace;

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->g:Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/i;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/metrics/Trace;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    .line 5
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/perf/metrics/Trace;Lcom/hiya/client/callerid/ui/d0/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/ui/d0/a$b;-><init>(Ljava/lang/String;Lcom/google/firebase/perf/metrics/Trace;)V

    return-void
.end method

.method private d(Ljava/lang/String;J)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/hiya/client/callerid/ui/d0/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Timer records counter:%s, %s"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/perf/metrics/Trace;->incrementMetric(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v0, 0x1

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/client/callerid/ui/b0/i;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/b0/i;->b()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/client/callerid/ui/b0/i;

    invoke-virtual {v3}, Lcom/hiya/client/callerid/ui/b0/i;->b()J

    move-result-wide v3

    .line 4
    iget-object v5, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hiya/client/callerid/ui/b0/i;

    invoke-virtual {v5}, Lcom/hiya/client/callerid/ui/b0/i;->a()Ljava/lang/String;

    move-result-object v5

    sub-long/2addr v3, v1

    invoke-direct {p0, v5, v3, v4}, Lcom/hiya/client/callerid/ui/d0/a$b;->d(Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/hiya/client/callerid/ui/d0/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Timer stop"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->stop()V

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/hiya/client/callerid/ui/d0/a$b;->d(Ljava/lang/String;J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    new-instance v1, Lcom/hiya/client/callerid/ui/b0/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/hiya/client/callerid/ui/b0/i;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/hiya/client/callerid/ui/d0/a$b;->c(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v0}, Lcom/google/firebase/perf/metrics/Trace;->start()V

    .line 4
    invoke-static {}, Lcom/hiya/client/callerid/ui/d0/a;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Timer start"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->f:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/d0/a$b;->h:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
