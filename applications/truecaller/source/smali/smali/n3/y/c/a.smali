.class public final synthetic Ln3/y/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/c/m$j;


# instance fields
.field public final synthetic a:Ln3/y/c/m;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ln3/y/c/m;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/c/a;->a:Ln3/y/c/m;

    iput-object p2, p0, Ln3/y/c/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/c/x0$b;)V
    .locals 2

    iget-object v0, p0, Ln3/y/c/a;->a:Ln3/y/c/m;

    iget-object v1, p0, Ln3/y/c/a;->b:Ljava/util/List;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, v0, v1}, Ln3/y/c/x0$b;->g(Ln3/y/c/x0;Ljava/util/List;)V

    return-void
.end method
