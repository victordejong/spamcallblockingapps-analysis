.class Lg/i/a/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/i/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lg/i/a/a;


# direct methods
.method private constructor <init>(Lg/i/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg/i/a/e$c;->a:Lg/i/a/a;

    return-void
.end method

.method synthetic constructor <init>(Lg/i/a/a;Lg/i/a/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/i/a/e$c;-><init>(Lg/i/a/a;)V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/i/a/e$c;->a:Lg/i/a/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lg/i/a/a;->onSuccess()V

    :cond_0
    return-void
.end method
