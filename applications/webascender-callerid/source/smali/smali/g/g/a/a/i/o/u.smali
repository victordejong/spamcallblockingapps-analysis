.class public Lg/g/a/a/i/o/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private user:Lg/g/a/a/i/o/x;
    .annotation runtime Lcom/google/gson/v/c;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/a/i/o/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/a/i/o/u;->user:Lg/g/a/a/i/o/x;

    return-void
.end method


# virtual methods
.method public getUser()Lg/g/a/a/i/o/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/o/u;->user:Lg/g/a/a/i/o/x;

    return-object v0
.end method
