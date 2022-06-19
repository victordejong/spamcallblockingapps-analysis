.class final Lg/f/a/d/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lg/f/a/d/g/a;


# direct methods
.method constructor <init>(Lg/f/a/d/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/d/g/b;->f:Lg/f/a/d/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/a/d/g/b;->f:Lg/f/a/d/g/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/f/a/d/g/a;->g(Lg/f/a/d/g/a;I)V

    return-void
.end method
