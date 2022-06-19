.class public abstract Lg/g/a/a/i/l/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private assistSubtitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "subtitle"
    .end annotation
.end field

.field private assistTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "title"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/l/p;->type:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/g/a/a/i/l/p;->assistTitle:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lg/g/a/a/i/l/p;->assistSubtitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAssistSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/p;->assistSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getAssistTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/p;->assistTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSearchAssistType()Lg/g/a/a/i/l/q;
    .locals 2

    .line 1
    sget-object v0, Lg/g/a/a/i/l/q;->Companion:Lg/g/a/a/i/l/q$a;

    iget-object v1, p0, Lg/g/a/a/i/l/p;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/g/a/a/i/l/q$a;->from(Ljava/lang/String;)Lg/g/a/a/i/l/q;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/l/p;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final setAssistSubtitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/p;->assistSubtitle:Ljava/lang/String;

    return-void
.end method

.method public final setAssistTitle(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/p;->assistTitle:Ljava/lang/String;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/l/p;->type:Ljava/lang/String;

    return-void
.end method
