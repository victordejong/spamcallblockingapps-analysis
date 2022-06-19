.class public final Lg/g/b/d/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sendPhoneEventUrl"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placesTrackEventUrl"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userFeedbackUrl"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "performanceEventUrl"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/f/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lg/g/b/d/f/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/g/b/d/f/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/g/b/d/f/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/e;
    .locals 2

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/c/e;

    iget-object v1, p0, Lg/g/b/d/f/a;->d:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lg/g/b/d/c/e;-><init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/g;
    .locals 2

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/c/g;

    iget-object v1, p0, Lg/g/b/d/f/a;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lg/g/b/d/c/g;-><init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/i;
    .locals 2

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/c/i;

    iget-object v1, p0, Lg/g/b/d/f/a;->c:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lg/g/b/d/c/i;-><init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/c;
    .locals 2

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/d/c/c;

    iget-object v1, p0, Lg/g/b/d/f/a;->a:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lg/g/b/d/c/c;-><init>(Lcom/google/gson/f;Lg/g/a/a/g/d;Ljava/lang/String;)V

    return-object v0
.end method
