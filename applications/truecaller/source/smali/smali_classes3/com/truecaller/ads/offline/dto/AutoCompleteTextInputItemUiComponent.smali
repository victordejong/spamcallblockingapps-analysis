.class public final Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;
.super Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent$a;

    invoke-direct {v0}, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent$a;-><init>()V

    sput-object v0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "label"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->k:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->l:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->n:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->o:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->m:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->o:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->n:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->n:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;->p:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
