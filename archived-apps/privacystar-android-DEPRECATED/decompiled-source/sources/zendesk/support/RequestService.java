package zendesk.support;

import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
/* loaded from: classes3-dex2jar.jar:zendesk/support/RequestService.class */
interface RequestService {
    @PUT("/api/mobile/requests/{id}.json?include=last_comment")
    Call<RequestResponse> addComment(@Path("id") String str, @Body UpdateRequestWrapper updateRequestWrapper);

    @POST("/api/mobile/requests.json?include=last_comment")
    Call<RequestResponse> createRequest(@Header("Mobile-Sdk-Identity") String str, @Body CreateRequestWrapper createRequestWrapper);

    @GET("/api/mobile/requests.json?sort_by=updated_at&sort_order=desc")
    Call<RequestsResponse> getAllRequests(@Query("status") String str, @Query("include") String str2);

    @GET("/api/mobile/requests/{id}/comments.json?sort_order=desc")
    Call<CommentsResponse> getComments(@Path("id") String str);

    @GET("/api/mobile/requests/{id}/comments.json?sort_order=desc")
    Call<CommentsResponse> getCommentsSince(@Path("id") String str, @Query("since") String str2, @Query("role") String str3);

    @GET("/api/mobile/requests/show_many.json?sort_order=desc")
    Call<RequestsResponse> getManyRequests(@Query("tokens") String str, @Query("status") String str2, @Query("include") String str3);

    @GET("/api/mobile/requests/{id}.json")
    Call<RequestResponse> getRequest(@Path("id") String str, @Query("include") String str2);

    @GET("/api/v2/ticket_forms/show_many.json?active=true")
    Call<RawTicketFormResponse> getTicketFormsById(@Query("ids") String str, @Query("include") String str2);
}
