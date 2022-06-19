.class public Lorg/joda/time/b0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/b0/r;

.field private final b:Lorg/joda/time/b0/q;

.field private final c:Ljava/util/Locale;

.field private final d:Lorg/joda/time/o;


# direct methods
.method public constructor <init>(Lorg/joda/time/b0/r;Lorg/joda/time/b0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/b0/o;->a:Lorg/joda/time/b0/r;

    .line 3
    iput-object p2, p0, Lorg/joda/time/b0/o;->b:Lorg/joda/time/b0/q;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lorg/joda/time/b0/o;->c:Ljava/util/Locale;

    .line 5
    iput-object p1, p0, Lorg/joda/time/b0/o;->d:Lorg/joda/time/o;

    return-void
.end method

.method constructor <init>(Lorg/joda/time/b0/r;Lorg/joda/time/b0/q;Ljava/util/Locale;Lorg/joda/time/o;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/joda/time/b0/o;->a:Lorg/joda/time/b0/r;

    .line 8
    iput-object p2, p0, Lorg/joda/time/b0/o;->b:Lorg/joda/time/b0/q;

    .line 9
    iput-object p3, p0, Lorg/joda/time/b0/o;->c:Ljava/util/Locale;

    .line 10
    iput-object p4, p0, Lorg/joda/time/b0/o;->d:Lorg/joda/time/o;

    return-void
.end method


# virtual methods
.method public a()Lorg/joda/time/b0/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/o;->b:Lorg/joda/time/b0/q;

    return-object v0
.end method

.method public b()Lorg/joda/time/b0/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/o;->a:Lorg/joda/time/b0/r;

    return-object v0
.end method

.method public c(Lorg/joda/time/o;)Lorg/joda/time/b0/o;
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/joda/time/b0/o;->d:Lorg/joda/time/o;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lorg/joda/time/b0/o;

    iget-object v1, p0, Lorg/joda/time/b0/o;->a:Lorg/joda/time/b0/r;

    iget-object v2, p0, Lorg/joda/time/b0/o;->b:Lorg/joda/time/b0/q;

    iget-object v3, p0, Lorg/joda/time/b0/o;->c:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, p1}, Lorg/joda/time/b0/o;-><init>(Lorg/joda/time/b0/r;Lorg/joda/time/b0/q;Ljava/util/Locale;Lorg/joda/time/o;)V

    return-object v0
.end method
