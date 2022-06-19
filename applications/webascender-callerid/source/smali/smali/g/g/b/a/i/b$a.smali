.class public final Lg/g/b/a/i/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lg/g/b/a/i/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lg/g/b/a/i/a$a;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheSourceType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/i/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lg/g/b/a/i/b$a;->b:Lg/g/b/a/i/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lg/g/b/a/i/a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$a;->b:Lg/g/b/a/i/a$a;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
