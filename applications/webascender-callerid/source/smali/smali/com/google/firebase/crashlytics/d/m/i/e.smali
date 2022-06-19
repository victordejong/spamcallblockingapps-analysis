.class public Lcom/google/firebase/crashlytics/d/m/i/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/crashlytics/d/m/i/d;


# instance fields
.field public final a:Lcom/google/firebase/crashlytics/d/m/i/a;

.field public final b:Lcom/google/firebase/crashlytics/d/m/i/c;

.field public final c:Lcom/google/firebase/crashlytics/d/m/i/b;

.field public final d:J


# direct methods
.method public constructor <init>(JLcom/google/firebase/crashlytics/d/m/i/a;Lcom/google/firebase/crashlytics/d/m/i/c;Lcom/google/firebase/crashlytics/d/m/i/b;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->d:J

    .line 3
    iput-object p3, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->a:Lcom/google/firebase/crashlytics/d/m/i/a;

    .line 4
    iput-object p4, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->b:Lcom/google/firebase/crashlytics/d/m/i/c;

    .line 5
    iput-object p5, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->c:Lcom/google/firebase/crashlytics/d/m/i/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/crashlytics/d/m/i/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->c:Lcom/google/firebase/crashlytics/d/m/i/b;

    return-object v0
.end method

.method public b()Lcom/google/firebase/crashlytics/d/m/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->b:Lcom/google/firebase/crashlytics/d/m/i/c;

    return-object v0
.end method

.method public c()Lcom/google/firebase/crashlytics/d/m/i/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->a:Lcom/google/firebase/crashlytics/d/m/i/a;

    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->d:J

    return-wide v0
.end method

.method public e(J)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/crashlytics/d/m/i/e;->d:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
