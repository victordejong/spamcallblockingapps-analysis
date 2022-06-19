.class public final Lg/g/a/a/i/o/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private arr:[Lg/g/a/a/i/o/h;
    .annotation runtime Lcom/google/gson/v/c;
        value = "grants"
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lg/g/a/a/i/o/h;)V
    .locals 1

    const-string v0, "arr"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/a/i/o/j;->arr:[Lg/g/a/a/i/o/h;

    return-void
.end method


# virtual methods
.method public final getArr()[Lg/g/a/a/i/o/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/j;->arr:[Lg/g/a/a/i/o/h;

    return-object v0
.end method

.method public final setArr([Lg/g/a/a/i/o/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/o/j;->arr:[Lg/g/a/a/i/o/h;

    return-void
.end method
