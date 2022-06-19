.class public final Lg/h/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/j;


# instance fields
.field private final a:Lm/d;


# direct methods
.method public constructor <init>(Lm/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lm/c0;->g()Lm/d;

    move-result-object p1

    iput-object p1, p0, Lg/h/b/a;->a:Lm/d;

    return-void
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/h/b/a;->a:Lm/d;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lm/d;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
